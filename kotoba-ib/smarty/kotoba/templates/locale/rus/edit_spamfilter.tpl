{* Smarty *}
{*********************************
 * This file is part of Kotoba.  *
 * See license.txt for more info.*
 *********************************}
{*
Code of edit spamfilter page.

Variables:
    $DIR_PATH - path from server document root to index.php directory (see config.default).
    $STYLESHEET - stylesheet (see config.default).
    $show_control - show link to manage page.
    $boards - boards.
    $patterns - patterns.
*}
{include file='header.tpl' DIR_PATH=$DIR_PATH STYLESHEET=$STYLESHEET page_title="Редактирование спамфильтра"}

{include file='adminbar.tpl' DIR_PATH=$DIR_PATH show_control=$show_control}

{include file='navbar.tpl' DIR_PATH=$DIR_PATH boards=$boards}

<div class="logo">Редактирование спамфильтра</div>
<hr>
<form action="{$DIR_PATH}/admin/edit_spamfilter.php" method="post">
<table border="1">
<tr>
    <td colspan="2">Введите новый шаблон и нажмите Сохранить, чтобы добавить
    новый шаблон. Пометьте шаблоны и нажмите Сохранить, чтобы удалить помеченные
    шаблоны.</td>
</tr>
<tr>
    <td>Шаблон</td>
    <td>Удалить шаблон</td>
</tr>
{section name=i loop=$patterns}
<tr>
    <td>{$patterns[i].pattern}</td>
    <td><input type="checkbox" name="delete_{$patterns[i].id}" value="1"></td>
</tr>
{/section}
<tr>
    <td colspan="2"><input type="text" name="new_pattern" value=""></td>
</tr>
</table><br>
<input type="hidden" name="submited" value="1">
<input type="reset" value="Сброс"> <input type="submit" value="Сохранить">
</form>
{include file='footer.tpl'}