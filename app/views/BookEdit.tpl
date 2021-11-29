{extends file="main.tpl"}

{block name=top}

<div class="bottom-margin">
<form action="{$conf->action_root}personSave" method="post" class="pure-form pure-form-aligned">
	<fieldset>
		<legend>Dane usera</legend>
		<div class="pure-control-group">
            <label for="name">login</label>
            <input id="name" type="text" placeholder="login" name="login" value="{$form->login}">
        </div>
		<div class="pure-control-group">
            <label for="surname">hasło</label>
            <input id="surname" type="text" placeholder="password" name="password" value="{$form->password}">
        </div>
		<div class="pure-control-group">
            <label for="birthdate">typ użytkownika</label>
            <select id="birthdate" type="text" placeholder="user_type_id_type" name="user_type_id_type" value="{$form->user_type_id_type}">
                <option value="admin">Admin</option>
                <option value="user">User</option>
                <option value="librarian">Bibliotekarz</option>
            </select>
        </div>
        <div class="pure-controls">
            <input type="submit" class="pure-button pure-button-primary" value="Zapisz"/>
            <a class="pure-button button-secondary" href="{$conf->action_root}personList">Powrót</a>
        </div>
	</fieldset>
    <input type="hidden" name="id" value="{$form->id}">
</form>	
</div>

{/block}
