{extends "page.tpl"}

{block name="page_title"}
  {l s='Credit slips'}
{/block}

{block name="page_content"}
  <h2>{l s='Credit slips you have received after canceled orders'}.</h2>

  {if $credit_slips}
    <table>
      <thead>
        <tr>
          <th>{l s='Credit slip'}</th>
          <th>{l s='Order'}</th>
          <th>{l s='Date issued'}</th>
          <th>{l s='View credit slip'}</th>
        </tr>
      </thead>
      <tbody>
        {foreach from=$credit_slips item=slip}
          <tr>
            <td>{$slip.credit_slip_number}</td>
            <td><a href="#">{$slip.order_number}</a></td>
            <td>{$slip.credit_slip_date}</td>
            <td><a href="{$slip.url}" title="{l s='Credit slip'} {$slip.credit_slip_number}">{l s='PDF'}</a></td>
          </tr>
        {/foreach}
      </tbody>
    </table>
  {/if}

  <ul>
    <li><a href="{$urls.pages.my_account}">{l s='Back to your account'}</a></li>
    <li><a href="{$urls.pages.index}">{l s='Home'}</a></li>
  </ul>

{/block}
