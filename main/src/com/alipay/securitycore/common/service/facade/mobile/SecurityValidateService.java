package com.alipay.securitycore.common.service.facade.mobile;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.securitycore.common.service.facade.mobile.domain.SecurityValidateRequest;
import com.alipay.securitycore.common.service.facade.mobile.domain.SecurityValidateResult;

public abstract interface SecurityValidateService
{
  @OperationType("alipay.security.security.validate")
  public abstract SecurityValidateResult validate(SecurityValidateRequest paramSecurityValidateRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.securitycore.common.service.facade.mobile.SecurityValidateService
 * JD-Core Version:    0.6.2
 */