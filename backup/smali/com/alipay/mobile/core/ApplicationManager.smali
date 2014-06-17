.class public interface abstract Lcom/alipay/mobile/core/ApplicationManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addDescription(Lcom/alipay/mobile/framework/app/ApplicationDescription;)V
.end method

.method public abstract addDescription(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract clearTop(Lcom/alipay/mobile/framework/app/MicroApplication;)V
.end method

.method public abstract exit()V
.end method

.method public abstract findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;
.end method

.method public abstract findDescriptionById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
.end method

.method public abstract findDescriptionByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
.end method

.method public abstract finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract getTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;
.end method

.method public abstract onDestroyApp(Lcom/alipay/mobile/framework/app/MicroApplication;)V
.end method

.method public abstract restoreState(Landroid/content/SharedPreferences;)V
.end method

.method public abstract saveState(Landroid/content/SharedPreferences$Editor;)V
.end method

.method public abstract setEntryAppName(Ljava/lang/String;)V
.end method

.method public abstract startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract startEntryApp(Landroid/os/Bundle;)V
.end method
