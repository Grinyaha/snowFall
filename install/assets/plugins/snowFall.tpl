//<?php
 /**
 * snowFall
 *
 * Snowflakes for your website
 *
 * @category    plugin
 * @version     0.2
 * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal    @events OnWebPageInit
 * @internal    @properties {"snow_templates":[{"label":"ID шаблонов где падают снежинки","type":"text","value":"","default":"","desc":"id через запятую"}]}
 * @internal    @modx_category Manager and Admin
 * @author      plugin author Grinyaha
 * @lastupdate  03/12/2025
 */

$src = '<script src="/assets/plugins/snowfall/snow-fall.js?v=1"></script>';
$cur_tpl = $modx->getDocument($modx->documentIdentifier)['template'];


if(!empty($snow_templates))
{
$tpls = explode(',', $snow_templates);

    if (in_array($cur_tpl, $tpls)) {
        $modx->regClientScript($src, true);
    }

}
else {
    $modx->regClientScript($src, true);
}