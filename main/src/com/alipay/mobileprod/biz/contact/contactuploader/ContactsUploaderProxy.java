package com.alipay.mobileprod.biz.contact.contactuploader;

import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobileprod.biz.contact.facade.ContactManageServiceFacade;
import com.alipay.mobileprod.biz.contact.model.UploadContact;

class ContactsUploaderProxy
{
  RpcService a;
  private MicroApplicationContext b;

  public ContactsUploaderProxy(MicroApplicationContext paramMicroApplicationContext)
  {
    this.b = paramMicroApplicationContext;
    this.a = ((RpcService)this.b.findServiceByInterface(RpcService.class.getName()));
  }

  @CheckLogin
  public boolean uploadContacts(UploadContact paramUploadContact, boolean paramBoolean)
  {
    return ((ContactManageServiceFacade)this.a.getRpcProxy(ContactManageServiceFacade.class)).upload(paramUploadContact, paramBoolean);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.contact.contactuploader.ContactsUploaderProxy
 * JD-Core Version:    0.6.2
 */