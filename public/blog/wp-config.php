<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', '8bs_wordpress');

/** MySQL database username */
define('DB_USER', 'bitscraps');

/** MySQL database password */
define('DB_PASSWORD', 'tu7cw3ba');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'V1y%08#=30)S7n;R.!$KRoKf1JR.y|>c+:z>#]=b&7aT*5SF02[?dX7c!=H<9xOm');
define('SECURE_AUTH_KEY',  'c(X5=?P7e45xd4*e&Z. !!~g-Nn{U)*-$L--:?3@)>qj=|eL&Q~G[q2NahrN:|)L');
define('LOGGED_IN_KEY',    'd<|Yd=1`3;@;usDpqF8Yz,nB_8]9*tdKQ.@d~E]Ejm>Aq0%0J5,oSN[7-U1p{!`<');
define('NONCE_KEY',        't4?t=<]1y;C4;v9H$wd8vY+C31|].ij7>8bm?/L_otT3wi.+h3#ymmc~h2WaoVdz');
define('AUTH_SALT',        '&(AW!Nm2?2dztdus&1$SmH6-cqFUc#jxlsY|KuCVMr0^@,#buZq*VP*,H2DX@jT#');
define('SECURE_AUTH_SALT', 'w+uAmg_<)*}0Sr)]Raq1m1b(,A#l?RhdxCh=It30M#dMfD?6|/,09WM5MLqiy2!|');
define('LOGGED_IN_SALT',   '.G&~)5uYQO*Y.IrF!5~-<?8=<nOzL>f)!hCTTQP%.{TpcJ3f,ZT|1l/xzKB/$n,H');
define('NONCE_SALT',       '0n_>l|3y#g-/Y-2Q6]K(;*jR|/O[Ts<;8%yTe 5TQNkc1{b9!A3m/Sv9LHG+l)H-');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
