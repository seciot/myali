.class public interface abstract Lcom/alipay/mobile/framework/MicroApplicationContext;
.super Ljava/lang/Object;


# virtual methods
.method public abstract Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract Toast(Ljava/lang/String;I)V
.end method

.method public abstract attachContext(Lcom/alipay/mobile/framework/AlipayApplication;)V
.end method

.method public abstract clearState()V
.end method

.method public abstract dismissProgressDialog()V
.end method

.method public abstract exit()V
.end method

.method public abstract findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;
.end method

.method public abstract findDescriptionById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
.end method

.method public abstract findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;
.end method

.method public abstract finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;
.end method

.method public abstract getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getGwUrl()Ljava/lang/String;
.end method

.method public abstract getInterfaceManager()Lcom/alipay/mobile/framework/interfaces/InterfaceManager;
.end method

.method public abstract getTopActivity()Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasInited()Z
.end method

.method public abstract loadBundle(Ljava/lang/String;)V
.end method

.method public abstract onDestroyContent(Lcom/alipay/mobile/framework/MicroContent;)V
.end method

.method public abstract onWindowFocus(Lcom/alipay/mobile/framework/app/MicroApplication;)V
.end method

.method public abstract registerService(Ljava/lang/String;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation
.end method

.method public abstract restoreState()V
.end method

.method public abstract saveState()V
.end method

.method public abstract setGwUrl(Ljava/lang/String;)V
.end method

.method public abstract showProgressDialog(Ljava/lang/String;)V
.end method

.method public abstract showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
.end method

.method public abstract startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
.end method

.method public abstract startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V
.end method

.method public abstract startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V
.end method

.method public abstract startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;I)V
.end method

.method public abstract startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract startExtActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
.end method

.method public abstract startExtActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V
.end method

.method public abstract updateActivity(Landroid/app/Activity;)Landroid/app/Activity;
.end method
