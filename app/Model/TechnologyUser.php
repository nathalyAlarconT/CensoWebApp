<?php
/**
 * Link
 *
 * PHP version 5
 *
 * @category Model
 * @package  Croogo
 * @version  1.0
 * @author   Fahad Ibnay Heylaal <contact@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class TechnologyUser extends AppModel {

/**
 * Model name
 *
 * @var string
 * @access public
 */
	public $name = 'TechnologyUser';

/**
 * Behaviors used by the Model
 *
 * @var array
 * @access public
 */
	public $actsAs = array(
		
	);

/**
 * Validation
 *
 * @var array
 * @access public
 */
	public $validate = array(
		
	);

/**
 * Model Profile: belongsTo
 *
 * @var array
 * @access public
 */
	// public $belongsTo = 'User';
  public $belongsTo = array(
        'User', 'Technology'
    );
    
}
