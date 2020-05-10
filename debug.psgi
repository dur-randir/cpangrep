use Plack::Builder;
use lib "$FindBin::RealBin/lib";
use WWW::CPANGrep;

builder {
  enable 'Debug', panels => [ qw(Environment Response Memory Timer) ]; # Profiler::NYTProf
  WWW::CPANGrep->new->to_psgi_app;
};
