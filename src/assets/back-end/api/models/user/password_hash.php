
<?php
/**
 * We just want to hash our password using the current DEFAULT algorithm.
 * This is presently BCRYPT, and will produce a 60 character result.
 *
 * Beware that DEFAULT may change over time, so you would want to prepare
 * By allowing your storage to expand past 60 characters (255 would be good)
 */
echo password_hash("rasmuslerdorf", PASSWORD_DEFAULT);

#print_r(hash_algos());
//print_r(password_algos());
$pwd= 'bill';
$salt = 'wvVndjwcZJy!dwT4fBD@U^';
$spwd = $salt.$pwd;
//echo $hashed = hash('sha512',$spwd);
//cc0f386d3efe50e4acbb7d1083400655415f3e57f3a463954e4246ad08e4ecb14faff2b61ffabee39b3b170ba2da068f73d5e15742a9d85b363fceda362641c0
//echo  hash('sha512',$hashed);


/**
 * In this case, we want to increase the default cost for BCRYPT to 12.
 * Note that we also switched to BCRYPT, which will always be 60 characters.
 */
echo "\n\n";
$options = [
    'cost' => 12,
];
echo password_hash("rasmuslerdorf", PASSWORD_BCRYPT, $options);

echo "\n\n";

//or with argon2i
echo 'Argon2i hash: ' . password_hash('rasmuslerdorf', PASSWORD_ARGON2I);

?>