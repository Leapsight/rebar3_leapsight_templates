%% =============================================================================
%%  {{name}}_SUITE.erl -
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
-module({{name}}_SUITE).

-include_lib("common_test/include/ct.hrl").
-include_lib("eunit/include/eunit.hrl").

-compile([nowarn_export_all, export_all]).


all() ->
    [
        first_test
    ].

groups() -> [].


init_per_testcase(_Name, Config) ->
    Config.

end_per_testcase(_Name, _Config) ->
    ok.



%% =============================================================================
%% TEST CASES
%% =============================================================================




first_test(_Config) ->
    ?assert(false).




%% =============================================================================
%% HELPER FUNCTIONS
%% =============================================================================


