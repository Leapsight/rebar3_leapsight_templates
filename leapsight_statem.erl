%% =============================================================================
%%  {{name}}.erl -
%%
%%  Copyright (c) {{copyright_year}} Leapsight Technologies Limited. All rights reserved.
%%
%%  Licensed under the Apache License, Version 2.0 (the "License");
%%  you may not use this file except in compliance with the License.
%%  You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%%  Unless required by applicable law or agreed to in writing, software
%%  distributed under the License is distributed on an "AS IS" BASIS,
%%  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%%  See the License for the specific language governing permissions and
%%  limitations under the License.
%% =============================================================================


%% -----------------------------------------------------------------------------
%% @doc
%% @end
%% -----------------------------------------------------------------------------
-module({{name}}).
-behaviour(gen_statem).

-include_lib("kernel/include/logger.hrl").

-record(state, {

}).

-type t()           ::  #state{}.


%% API.
-export([start_link/1]).


%% GEN_STATEM CALLBACKS
-export([callback_mode/0]).
-export([init/1]).
-export([terminate/3]).
-export([code_change/4]).
-export([format_status/2]).


%% STATE FUNCTIONS
-export([placeholder_state/3]).



%% =============================================================================
%% API
%% =============================================================================


%% -----------------------------------------------------------------------------
%% @doc
%% @end
%% -----------------------------------------------------------------------------
start_link(Bridge) ->
    gen_statem:start_link(?MODULE, Bridge, []).



%% =============================================================================
%% GEN_STATEM CALLBACKS
%% =============================================================================



%% -----------------------------------------------------------------------------
%% @doc
%% @end
%% -----------------------------------------------------------------------------
callback_mode() ->
    [state_functions, state_enter].


%% -----------------------------------------------------------------------------
%% @doc
%% @end
%% -----------------------------------------------------------------------------
init(_Config) ->
    {ok, first, State}.


%% -----------------------------------------------------------------------------
%% @doc
%% @end
%% -----------------------------------------------------------------------------
terminate(_Reason, _StateName, #state{} = State) ->
    ok.


%% -----------------------------------------------------------------------------
%% @doc
%% @end
%% -----------------------------------------------------------------------------
code_change(_OldVsn, StateName, #state{} = State, _Extra) ->
    {ok, StateName, State}.


%% -----------------------------------------------------------------------------
%% @doc
%% @end
%% -----------------------------------------------------------------------------
format_status(Opt, [_PDict, _StateName, #state{} = State]) ->
    gen_format(Opt, State).



%% =============================================================================
%% STATE FUNCTIONS
%% =============================================================================


%% -----------------------------------------------------------------------------
%% @doc
%% @end
%% -----------------------------------------------------------------------------
placeholder_state(EventType, EventContent, State) ->
    handle_event(EventType, EventContent, ?FUNCTION_NAME, State).



%% =============================================================================
%% PRIVATE
%% =============================================================================


%% -----------------------------------------------------------------------------
%% @private
%% @doc Handle events common to all states
%% @end
%% -----------------------------------------------------------------------------
handle_event(EventType, EventContent, StateName, _) ->
    ?LOG_INFO(#{
        description => "Received unknown message",
        type => EventType,
        event => EventContent,
        state_name => StateName
    }),
    %% We also keep timers
    keep_state_and_data.


%% -----------------------------------------------------------------------------
%% @private
%% @doc Use format recommended by gen_server:format_status/2
%% @end
%% -----------------------------------------------------------------------------
gen_format(normal, State) ->
    [{data, [{"State", gen_format(State)}]}];

gen_format(_, State) ->
    gen_format(State).


%% @private
gen_format(State) ->
    State.

