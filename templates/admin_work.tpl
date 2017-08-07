{include file='admin_header.tpl'}

<h2>Настройки Карьеры</h2>
Эта страница содержит основные параметры, влияющие на карьеру всей вашей социальной сети.

<br><br>

{if $is_error != 0}
<div class='error'><img src='../images/error.gif' border='0' class='icon'> {$error_message}</div>
{/if}

{if $result != ""}
  <div class='success'><img src='../images/success.gif' border='0' class='icon'> {lang_print id=$result}</div>
{/if}


<form action='admin_work.php' method='POST' name='info'>

<!-- Nulled by [x-MoBiLe]
<table cellpadding='0' cellspacing='0' width='600'>
  <tr><td class='header'>Лицензионный ключ</td></tr>
  <tr><td class='setting1'>Введите лицензионный ключ, предоставленный вам, когда вы приобрели этот плагин. Если вы не знаете, лицензионный ключ, пожалуйста, свяжитесь со службой поддержки команды.</td></tr>
  <tr><td class='setting2'><input type='text' name='setting_work_license' value='{$setting_work_license}' size='30' maxlength="200" /> Формат: XXXX-XXXX-XXXX-XXXX</td>
  </tr>
</table>

<br>
// -->

<table cellpadding='0' cellspacing='0' width='600'>
  <tr><td class='header'>По умолчанию общественной Разрешение</td></tr>
  <tr><td class='setting1'>Выберите ли вы хотите, чтобы с общественностью (посетителей, которые не вошли в систему) для поиска и просмотра страницы глобального образования вашей социальной сети</td></tr>
  <tr>
    <td class='setting2'>

  <table cellpadding='2' cellspacing='0'>
  <tr>
  <td><input type='radio' name='setting_permission_work' id='permission_work_1' value='1'{if $setting_permission_work == 1} CHECKED{/if}></td>
  <td><label for='permission_work_1'>Да, население может получить доступ этой странице.</label></td>
  </tr>
  <tr>
  <td><input type='radio' name='setting_permission_work' id='permission_work_0' value='0'{if $setting_permission_work == 0} CHECKED{/if}></td>
  <td><label for='permission_work_0'>Нет, народ не может получить доступ к этой странице.</label></td>
  </tr>
  </table>

    </td>
  </tr>
</table>

<br>

<input type='submit' class='button' value='Сохранить изменения'>
<input type='hidden' name='task' value='dosave'>
</form>


{include file='admin_footer.tpl'}