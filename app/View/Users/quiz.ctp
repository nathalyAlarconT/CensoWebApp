<?php $this->extend('/Common/admin_edit'); ?>
<?php echo $this->Form->create('User');
$username = ''; $password=''; 
?>
<div class="mapsadminform">
<fieldset>
	
		

		<div id="user-main">
		<?php
			echo "<hr><h3>ACERCA DE MI</h3>";
			echo $this->Form->input('username', array('label' => 'Username')); 
			echo $this->Form->input('first_name', array('label' => 'Nombre'));
			echo $this->Form->input('last_name', array('label' => 'Apellido'));
			echo $this->Form->radio('gender', array('M' => 'Mujer', 'F' => 'Hombre'), array('legend' => 'Sexo', 'separator' => '<br> '));
			echo $this->Form->label('Departamento');
			echo $this->Form->select('location_depto_id', $deptoOptions);
			echo $this->Form->label('Fecha de Nacimiento');
			echo $this->Form->date('date_birth', array('label' => ''));
			echo $this->Form->label('Área en la que te desenvuelves');
			echo $this->Form->select('industry_id', $industryOptions);
			
			echo "<hr><h3>ME CONTACTAS POR</h3>";	
			echo $this->Form->input('email');	
			echo $this->Form->input('phone_number', array('label' => 'Tu celular'));
			echo $this->Form->input('twitter_account', array('label' => 'Tu Twitter'));
			
			echo $this->Form->input('facebook_account', array('label' => 'Tu Facebook'));
			echo $this->Form->input('google_account', array('label' => 'Tu Google+'));
			echo $this->Form->input('linkedin_account', array('label' => 'Tu LinkedIn'));
			echo $this->Form->input('skype_account', array('label' => 'Tu Skype'));
			
			echo "<hr><h3>MI CV</h3>";
			echo $this->Form->label('Tu Nivel Académico');
			echo $this->Form->select('academic_level_id', $academicLevelOptions);
			echo $this->Form->input('Mi portfolio (url)');
			echo $this->Form->input('education_id', array('label' => 'Mi formación académica - ***ADICIONAR GRID***'));  
			echo $this->Form->input('years_experience', array('label' => 'Años de experiencia'));
			echo $this->Form->label('A que te dedicas');	
			echo $this->Form->select('ocupation_id', $ocupationsOptions, array('multiple' => true));

		    echo $this->Form->input('company', array('label' => 'Mi trabajo actual
'));
		    echo $this->Form->label('Te desempeñas como');	
			echo $this->Form->select('ocupation_id', $techCareersOptions, array('multiple' => true));
			echo $this->Form->label('Idiomas');	
			echo $this->Form->select('languages', $languagesOptions, array('multiple' => true));
			echo $this->Form->label('Quisiera desempeñarme como');	
			echo $this->Form->select('future_career', $techCareersOptions, array('multiple' => true));
			echo $this->Form->input('interests', array('label' => 'Qué tecnologías te interesan'));
			echo "<hr><h3>Mi opinion como Mujer en tech</h3>";	
			echo $this->Form->radio('have_kids', array('1' => 'Si', '0' => 'No'), array('legend' => 'Tienes hijos?', 'separator' => '<br> '));
			echo $this->Form->label('Cómo balanceas tu trabajo con tu vida personal?');
			echo $this->Form->textarea('worklife_balance');
			echo $this->Form->label('Cómo decidiste ingresar en una carrera tecnológica?');
			echo $this->Form->textarea('pursue_career');
			echo $this->Form->label('Cuál fue el reto más grande al que te enfrentaste en tu carrera tecnológica?');
			echo $this->Form->textarea('greatest_challenge');
			echo $this->Form->label('Cómo mantienes actualizados tus conocimientos tecnológicos?');
			echo $this->Form->textarea('stay_current');
			echo $this->Form->label('Cúales crees que son las barreras a las que se enfrentan las mujeres en tecnología?');
			echo $this->Form->textarea('barriers_wit');
			echo $this->Form->label('Cuáles piensas que son las limitaciones en Bolivia que impiden el progreso tecnológico?');
			echo $this->Form->textarea('bolivia_limits');
			echo "<hr><h3>Capacitación</h3>";
				// si pudieras tomar un curso de capacitacion q tipo de cursos te interesaria mas?
			echo $this->Form->label('Que dias preferirias tomar el curso?');
			echo $this->Form->select('training_days', array('lun-vie' => 'Días Laborales', 'sab-dom' => 'Fines de Semana'));	
			echo $this->Form->label('Con qué frecuencia?');
			echo $this->Form->select('training_days', array('1v' => '1 vez a la semana', '2v' => '2 veces a la semana', '3v' => '3 veces a la semana'));
			echo $this->Form->label('En qué horario?');
			echo $this->Form->select('training_time', array('manana' => 'En la maniana', 'tarde' => 'En la tarde', 'noche' => 'En la noche (a partir de las 7pm)'));
		
		?>
		</div>
		
	
</fieldset>

<div class="buttons">
<?php
	echo $this->Form->end(__('Save'));
	echo $this->Html->link(__('Cancel'), array(
		'action' => 'quiz',
	), array(
		'class' => 'cancel',
	));
?>
</div>
</div>
