use inc::Module::Install;

RTx('RT-Extension-QuickCalls');
version_from ('lib/RT/Extension/QuickCalls.pm');
abstract_from('lib/RT/Extension/QuickCalls.pm');
license('perl');
requires('Test::More');

sign;
&WriteAll;
