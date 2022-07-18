xquery version "3.1";

(:~ This library module contains XQSuite tests for the messy-app app.
 :
 : @author elli_b
 : @version 1.0.0
 : @see https://www.huygens.knaw.nl/medewerkers/elli-bleeker/
 :)

module namespace tests = "http://www.obdurodon.org/apps/messy-app/tests";

declare namespace test="http://exist-db.org/xquery/xqsuite";



declare
    %test:name('one-is-one')
    %test:assertTrue
    function tests:tautology() {
        1 = 1
};
