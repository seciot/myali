package com.alipay.android.widget.security.ui.authentication;

import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Base64;
import android.view.View.OnClickListener;
import com.alipay.android.widget.security.service.a;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobilesecurity.core.model.account.certify.SubmitACertifyReq;
import com.alipay.mobilesecurity.core.model.account.certify.SubmitACertifyResult;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.ViewById;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;

@EFragment(resName="authentication_upload_id")
public class UploadIdImgFragment extends BaseAuthenticationFragment
{

  @ViewById(resName="certified_id")
  protected APRelativeLayout d;

  @ViewById(resName="certified_id_date_tip")
  protected APTextView e;

  @ViewById(resName="id_image_0")
  protected APImageView f;

  @ViewById(resName="id_image_1")
  protected APImageView g;

  @ViewById(resName="commit_btn")
  protected APButton h;
  protected List<File> i;
  private int j = 0;
  private int k = 0;
  private int l = 0;
  private String m;
  private a n;
  private AuthService o;
  private UserInfo p = null;
  private Handler q;
  private String[] r = new String[2];
  private View.OnClickListener s = new UploadIdImgFragment.3(this);
  private View.OnClickListener t = new UploadIdImgFragment.4(this);

  private static String a(File paramFile)
  {
    byte[] arrayOfByte = null;
    if (paramFile != null);
    try
    {
      boolean bool = paramFile.exists();
      arrayOfByte = null;
      if (bool)
      {
        new StringBuilder("file: ").append(paramFile.getAbsolutePath()).append("file size: ").append(paramFile.length() / 1024L).append("k").toString();
        FileInputStream localFileInputStream = new FileInputStream(paramFile);
        arrayOfByte = new byte[localFileInputStream.available()];
        int i1;
        do
          i1 = localFileInputStream.read(arrayOfByte);
        while (i1 != -1);
      }
      if (arrayOfByte != null)
      {
        str = Base64.encodeToString(arrayOfByte, 2);
        new StringBuilder("base64 string length:").append(str.length()).toString();
        return str;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        continue;
        String str = "";
      }
    }
  }

  private void a(List<Uri> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0));
    while (true)
    {
      return;
      File[] arrayOfFile = new File[paramList.size()];
      CountDownLatch localCountDownLatch = new CountDownLatch(paramList.size());
      BackgroundExecutor.execute(new UploadIdImgFragment.1(this, localCountDownLatch, arrayOfFile));
      for (int i1 = 0; i1 < paramList.size(); i1++)
        BackgroundExecutor.execute(new UploadIdImgFragment.2(this, (Uri)paramList.get(i1), arrayOfFile, i1, localCountDownLatch));
    }
  }

  @Background
  protected void d()
  {
    try
    {
      SubmitACertifyReq localSubmitACertifyReq = new SubmitACertifyReq();
      if (this.o == null)
        return;
      this.p = this.o.getUserInfo();
      if (this.p == null)
        return;
      localSubmitACertifyReq.logonId = this.p.getLogonId();
      localSubmitACertifyReq.expireDate = this.m;
      localSubmitACertifyReq.upImgUrl = a((File)this.i.get(0));
      localSubmitACertifyReq.downImgUrl = a((File)this.i.get(1));
      ((BaseFragmentActivity)getActivity()).showProgressDialog("提交中", true, null);
      localSubmitACertifyResult = this.n.a(localSubmitACertifyReq);
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      if (this == null)
        return;
      if (isRemoving())
        return;
      if (localSubmitACertifyResult != null)
        if (localSubmitACertifyResult.success)
        {
          UploadIdResultFragment_ localUploadIdResultFragment_ = new UploadIdResultFragment_();
          localUploadIdResultFragment_.a(this.a);
          ((AuthenticationUploadIdInfoActivity)getActivity()).a(localUploadIdResultFragment_, true);
          return;
        }
    }
    catch (RpcException localRpcException)
    {
      SubmitACertifyResult localSubmitACertifyResult;
      localRpcException.getMessage();
      ((BaseFragmentActivity)getActivity()).dismissProgressDialog();
      throw localRpcException;
      ((BaseFragmentActivity)getActivity()).toast(localSubmitACertifyResult.message, 0);
      return;
    }
    catch (Exception localException)
    {
      localException.getMessage();
      return;
    }
    ((BaseFragmentActivity)getActivity()).toast(getResources().getString(R.string.c), 0);
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    int i1 = 0;
    super.onActivityCreated(paramBundle);
    if (this.a != null)
      this.o = ((AuthService)this.a.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    this.q = new Handler();
    this.n = new a();
    this.d.setOnClickListener(this.s);
    this.h.setEnabled(false);
    this.h.setOnClickListener(this.t);
    Bundle localBundle = getArguments();
    if (localBundle != null)
      try
      {
        String[] arrayOfString = (String[])localBundle.getStringArray("idImageFiles");
        if ((arrayOfString != null) && (arrayOfString.length > 0))
        {
          Uri[] arrayOfUri = new Uri[arrayOfString.length];
          while (i1 < arrayOfUri.length)
          {
            arrayOfUri[i1] = Uri.fromFile(new File(arrayOfString[i1]));
            i1++;
          }
          List localList = Arrays.asList(arrayOfUri);
          if (this.i == null)
            this.i = new ArrayList();
          a(localList);
          AlipayLogAgent.writeLog(getActivity(), BehaviourIdEnum.OPENPAGE, "-", "-", "20000038", "-", "uploadPaperView", "realNameResultsView", "-");
          return;
        }
        ((BaseFragmentActivity)getActivity()).toast("身份证拍摄异常，请重新拍摄。", 0);
        return;
      }
      catch (Exception localException)
      {
      }
  }

  public void onDestroy()
  {
    super.onDestroy();
    try
    {
      if (this.i != null)
      {
        Iterator localIterator = this.i.iterator();
        while (localIterator.hasNext())
        {
          File localFile = (File)localIterator.next();
          if (localFile.exists())
            localFile.delete();
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.UploadIdImgFragment
 * JD-Core Version:    0.6.2
 */