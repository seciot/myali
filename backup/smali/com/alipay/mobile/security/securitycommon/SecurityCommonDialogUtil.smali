.class public Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 3

    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Boolean;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil$1;-><init>(Landroid/app/Activity;Ljava/lang/Boolean;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;",
            ">(",
            "Lcom/alipay/mobile/framework/app/ui/BaseActivity;",
            "Lcom/alipay/mobile/framework/app/ActivityApplication;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :try_start_0
    check-cast p2, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    const-string/jumbo v0, "700"

    invoke-virtual {p2}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Landroid/app/Activity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Boolean;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=showErrMsg], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;",
            ">(",
            "Lcom/alipay/mobile/framework/app/ui/BaseActivity;",
            "Lcom/alipay/mobile/framework/app/ActivityApplication;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    :try_start_0
    check-cast p2, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    const-string/jumbo v0, "700"

    invoke-virtual {p2}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Landroid/app/Activity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Boolean;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=showErrMsg], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;",
            ">(",
            "Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;",
            "Lcom/alipay/mobile/framework/app/ActivityApplication;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :try_start_0
    check-cast p2, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    const-string/jumbo v0, "700"

    invoke-virtual {p2}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Landroid/app/Activity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Boolean;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=showErrMsg], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
