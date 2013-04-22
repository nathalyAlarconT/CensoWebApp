<?php $this->extend('/Common/admin_edit'); 
// $this->layout = 'ajax'
	$this->layout = 'gdgbo';
?>
<?php echo $this->Form->create('User');
$username = ''; $password=''; 
?>
<fieldset>
	
		

		<div id="user-main">
		<?php
			echo "<h3>ACERCA DE MI</h3>";
			// echo $this->Form->input('username', array('label' => 'Username')); 
			echo $this->Form->input('Profile.first_name', array('label' => 'Nombre'));
			echo $this->Form->input('Profile.last_name', array('label' => 'Apellido'));
			
			echo $this->Form->radio('Profile.gender', array('M' => 'Mujer', 'F' => 'Hombre'), array('legend' => 'Sexo', 'separator' => '<br> '));
			
			echo "<div class='input'>";
			echo $this->Form->label('Departamento');
			echo $this->Form->select('Profile.location_depto_id', $deptoOptions);
			echo "</div>";
			
			echo "<div class='input'>";
			echo $this->Form->label('Fecha de Nacimiento');
			echo $this->Form->date('Profile.date_birth', array('label' => ''));
			echo "</div>";
			
			echo "<div class='input'>";
			echo $this->Form->label('Área en la que te desenvuelves');
			echo $this->Form->select('Profile.industry_id', $industryOptions);
			echo "</div>";
		
			echo "<h3>ME CONTACTAS POR</h3>";	
			echo $this->Form->input('email');	
			echo $this->Form->input('Profile.phone_number', array('label' => 'Tu celular'));
			echo $this->Form->input('Profile.twitter_account', array('label' => 'Tu Twitter'));
			
			echo $this->Form->input('Profile.facebook_account', array('label' => 'Tu Facebook'));
			echo $this->Form->input('Profile.google_account', array('label' => 'Tu Google+'));
			echo $this->Form->input('Profile.linkedin_account', array('label' => 'Tu LinkedIn'));
			echo $this->Form->input('Profile.skype_account', array('label' => 'Tu Skype'));
			
			echo "<hr><h3>MI CV</h3>";
			echo $this->Form->label('Tu Nivel Académico');
			echo $this->Form->select('Profile.academic_level_id', $academicLevelOptions);
			echo $this->Form->input('Profile.website_url', array('Mi portfolio (url)'));
			
			
			echo $this->Form->label('Mi formación académica');
			?>
			<!-- <table border='1'> 
			<tr> <th>Intitución</th><th>Desde</th><th>Hasta</th>  </tr>
				<tr>
					<td> -->
			<?php echo $this->Form->input('Education.0.school', array('label' => ''));
		    ?>
					<!-- </td> <td> -->
		    <?php  
			echo $this->Form->date('Education.0.start_date', array('label' => ''));
			 ?>
					<!-- </td> <td> -->
		    <?php  
			echo $this->Form->date('Education.0.end_date', array('label' => ''));
			 ?>
					<!-- </td></tr><tr> <td> -->
		    <?php  
			echo $this->Form->input('Education.1.school', array('label' => ''));  
			 ?>
					<!-- </td> <td> -->
		    <?php  
			echo $this->Form->date('Education.1.start_date', array('label' => ''));
			 ?>
					<!-- </td> <td> -->
		    <?php  
			echo $this->Form->date('Education.1.end_date', array('label' => 'Hasa'));
 			?>
					<!-- </td> </tr> </table> -->
		    <?php  

			echo $this->Form->input('Profile.years_experience', array('label' => 'Años de experiencia'));
			echo $this->Form->label('A que te dedicas');	

			echo $this->Form->select('Profile.ocupation_id', $ocupationsOptions);

		    echo $this->Form->input('Profile.company', array('label' => 'Mi trabajo actual'));


		    echo $this->Form->label('Te desempeñas como');	
			echo $this->Form->select('Profile.current_career', $techCareersOptions);//, array('multiple' => true));
			
			echo $this->Form->label('Idiomas');	
			
			echo $this->Form->select('UserWorldLanguages.language_id', $languagesOptions, array('multiple' => 'checkbox'));
			
			echo $this->Form->label('Quisiera desempeñarme como');	
			echo $this->Form->select('Profile.future_career', $techCareersOptions2); 
			

			echo "<hr><h3>Mi opinion como Mujer en tech</h3>";	
			
			echo $this->Form->radio('Profile.have_kids', array('1' => 'Si', '0' => 'No'), array('legend' => 'Tienes hijos?', 'separator' => '<br> '));
			echo $this->Form->label('Cómo balanceas tu trabajo con tu vida personal?');
			echo $this->Form->textarea('Profile.work_life_balance');
			echo $this->Form->label('Cómo decidiste ingresar en una carrera tecnológica?');
			echo $this->Form->textarea('Profile.pursue_career');
			echo $this->Form->label('Cuál fue el reto más grande al que te enfrentaste en tu carrera tecnológica?');
			echo $this->Form->textarea('Profile.greatest_challenge');
			echo $this->Form->label('Cómo mantienes actualizados tus conocimientos tecnológicos?');
			echo $this->Form->textarea('Profile.stay_current');
			echo $this->Form->label('Cúales crees que son las barreras a las que se enfrentan las mujeres en tecnología?');
			echo $this->Form->textarea('Profile.woman_barriers');
			echo $this->Form->label('Cuáles piensas que son las limitaciones en Bolivia que impiden el progreso tecnológico?');
			echo $this->Form->textarea('Profile.bolivian_limits');
			
			echo "<hr><h3>Capacitación</h3>";
				// si pudieras tomar un curso de capacitacion q tipo de cursos te interesaria mas?
			echo $this->Form->label('Qué tecnologías quisieras aprender?');	
			echo $this->Form->select('TechnologyUsers.technology_id', $technologiesOptions, array('multiple' => 'checkbox'));
			echo $this->Form->label('Que dias preferirias tomar el curso?');
			echo $this->Form->select('Profile.training_days', array('lun-vie' => 'Días Laborales', 'sab-dom' => 'Fines de Semana'));	
			echo $this->Form->label('Con qué frecuencia?');
			echo $this->Form->select('Profile.training_frequency', array('1v' => '1 vez a la semana', '2v' => '2 veces a la semana', '3v' => '3 veces a la semana'));
			echo $this->Form->label('En qué horario?');
			echo $this->Form->select('Profile.training_time', array('manana' => 'En la maniana', 'tarde' => 'En la tarde', 'noche' => 'En la noche (a partir de las 7pm)'));
			
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
