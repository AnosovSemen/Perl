package Authentication::Controller::Example;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub welcome {
  my $self = shift;
#$r->post('authentication')->to('#');
}

sub auth {
	my $self = shift;

	if ( $self->param('username') ne 'admin' or $self->param('password') ne '12345') {
		$self->render(msg => 'Denied!');
	} else {
		$self->render(msg => 'Congratulations!');
	}
}
1;
