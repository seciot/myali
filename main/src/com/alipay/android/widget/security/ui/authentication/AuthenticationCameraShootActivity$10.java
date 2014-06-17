package com.alipay.android.widget.security.ui.authentication;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;

class AuthenticationCameraShootActivity$10
  implements AuthenticationSaveImageHelper.SaveImageResultCallback
{
  AuthenticationCameraShootActivity$10(AuthenticationCameraShootActivity paramAuthenticationCameraShootActivity, int paramInt)
  {
  }

  public final void a(boolean paramBoolean, String paramString)
  {
    new StringBuilder("save photo result: ").append(paramBoolean).append(" path: ").append(paramString).toString();
    if (paramBoolean)
    {
      AuthenticationCameraShootActivity.j(this.b)[this.a] = paramString;
      if (1 == this.a)
      {
        new StringBuilder("imag0:").append(AuthenticationCameraShootActivity.j(this.b)[0]).append(" imag1:").append(AuthenticationCameraShootActivity.j(this.b)[1]).toString();
        Intent localIntent = new Intent(this.b, AuthenticationUploadIdInfoActivity_.class);
        Bundle localBundle = new Bundle();
        localBundle.putStringArray("idImageFiles", AuthenticationCameraShootActivity.j(this.b));
        localIntent.putExtras(localBundle);
        AuthenticationCameraShootActivity.l(this.b).startActivity(AuthenticationCameraShootActivity.k(this.b), localIntent);
        this.b.finish();
      }
      return;
    }
    this.b.toast("图片保存失败", 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.AuthenticationCameraShootActivity.10
 * JD-Core Version:    0.6.2
 */