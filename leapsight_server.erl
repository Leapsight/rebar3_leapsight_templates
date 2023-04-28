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
-behaviour(gen_server).

-include_lib("kernel/include/logger.hrl").

-record(state, {

}).

-type t()           ::  #state{}.

%% API.
-export([start_link/1]).


%% GEN_SERVER CALLBACKS
-export([code_change/3]).
-export([handle_call/3]).
-export([handle_cast/2]).
-export([handle_info/2]).
-export([init/1]).
-export([terminate/2]).



%% =============================================================================
%% API
%% =============================================================================


%% -----------------------------------------------------------------------------
%% @doc Starts the server.
%% @end
%% -----------------------------------------------------------------------------
start_link() ->
    Opts = [
    ],
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], Opts).



%% =============================================================================
%% GEN_SERVER CALLBACKS
%% =============================================================================



init([]) ->
    State = #state{},
    {ok, State}.


handle_call(Msg, From, State) ->
    ?LOG_WARNING(#{
        reason => "Unhandled call",
        description => Msg,
        from => From
    }),
    {reply, {error, not_implemented}, State}.


handle_cast(Msg, State) ->
    ?LOG_WARNING(#{
        reason => "Unhandled cast",
        description => Msg
    }),
    {noreply, State}.


handle_info(Msg, State) ->
    ?LOG_WARNING(#{
        reason => "Unhandled info",
        description => Msg
    }),
    {noreply, State}.


terminate(_Reason, _State) ->
    ?LOG_DEBUG("Terminating."),
    ok.


code_change(_OldVsn, State, _Extra) ->
    {ok, State}.




