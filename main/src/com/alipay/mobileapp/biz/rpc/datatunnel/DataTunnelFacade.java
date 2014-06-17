package com.alipay.mobileapp.biz.rpc.datatunnel;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileapp.biz.rpc.datatunnel.vo.DownloadResultReq;
import com.alipay.mobileapp.biz.rpc.datatunnel.vo.ResourceMetaPackageRequest;
import com.alipay.mobileapp.biz.rpc.datatunnel.vo.ResourceMetaPackageResponse;
import java.util.List;

public abstract interface DataTunnelFacade
{
  @OperationType("alipay.client.mobileapp.checkResult")
  public abstract void checkResult(List<DownloadResultReq> paramList);

  @OperationType("alipay.client.mobileapp.getResourceUrl")
  public abstract ResourceMetaPackageResponse getResourceUrl(ResourceMetaPackageRequest paramResourceMetaPackageRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.datatunnel.DataTunnelFacade
 * JD-Core Version:    0.6.2
 */