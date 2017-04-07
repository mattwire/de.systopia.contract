{*-------------------------------------------------------------+ | SYSTOPIA Contract Extension | | Copyright (C) 2017 SYSTOPIA | | Author: M. McAndrew (michaelmcandrew@thirdsectordesign.org) | | B. Endres (endres -at- systopia.de) | | http://www.systopia.de/
| +-------------------------------------------------------------*}

<div class="crm-block crm-form-block">

  <h3>
  {if $historyAction eq 'cancel'}
    Please choose a reason for cancelling this contract and click on '{$historyAction|ucfirst}' below.
  {elseif $isUpdate}
    Please make the required changes to the contract and click on '{$historyAction|ucfirst}' below.
  {else}
    Please confirm that you want to {$historyAction} this contract by clicking on '{$historyAction|ucfirst}' below.
  {/if}
</h3>


  {if $form.contract_history_recurring_contribution.html}
    {include file="CRM/Contract/Form/MandateBlock.tpl"}
  {/if}
  <hr />
  <div class="crm-section">
    <div class="label">{$form.activity_date.label}</div>
    <div class="content">{include file="CRM/common/jcalendar.tpl" elementName=activity_date}</div>
    <div class="clear"></div>
  </div>
  {if $form.cancel_date.html}
  <div class="crm-section">
    <div class="label">{$form.cancel_date.label}</div>
    <div class="content">{include file="CRM/common/jcalendar.tpl" elementName=cancel_date}</div>
    <div class="clear"></div>
  </div>
  {/if}
  {if $form.resume_date.html}
  <div class="crm-section">
    <div class="label">{$form.resume_date.label}</div>
    <div class="content">{include file="CRM/common/jcalendar.tpl" elementName=resume_date}</div>
    <div class="clear"></div>
  </div>
  {/if}
  <div class="crm-section">
    <div class="label">{$form.cancel_reason.label}</div>
    <div class="content">{$form.cancel_reason.html}</div>
    <div class="clear"></div>
  </div>
  <div class="crm-section">
    <div class="label">{$form.campaign_id.label}</div>
    <div class="content">{$form.campaign_id.html}</div>
    <div class="clear"></div>
  </div>
  <div class="crm-section">
    <div class="label">{$form.activity_medium.label}</div>
    <div class="content">{$form.activity_medium.html}</div>
    <div class="clear"></div>
  </div>
  <div class="crm-section">
    <div class="label">{$form.membership_type_id.label}</div>
    <div class="content">{$form.membership_type_id.html}</div>
    <div class="clear"></div>
  </div>
  <div class="crm-section">
    <div class="label">{$form.activity_details.label}</div>
    <div class="content">{$form.activity_details.html}</div>
    <div class="clear"></div>
  </div>
  <div class="crm-submit-buttons">
    {include file="CRM/common/formButtons.tpl" location="bottom"}
  </div>
</div>
