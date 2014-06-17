.class public abstract Lcom/alipay/mobile/framework/app/MicroApplication;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/MicroContent;


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-void
.end method

.method public abstract create(Landroid/os/Bundle;)V
.end method

.method public destroy(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->onDestroy(Landroid/os/Bundle;)V

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->d:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getEntryClassName()Ljava/lang/String;
.end method

.method public getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method public getParentAppClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract onCreate(Landroid/os/Bundle;)V
.end method

.method protected abstract onDestroy(Landroid/os/Bundle;)V
.end method

.method protected abstract onRestart(Landroid/os/Bundle;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method public abstract restart(Landroid/os/Bundle;)V
.end method

.method public restoreState(Landroid/content/SharedPreferences;)V
    .locals 0

    return-void
.end method

.method public saveState(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->d:Ljava/lang/String;

    return-void
.end method

.method public abstract setIsPrevent(Z)V
.end method

.method public setParentAppClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->c:Ljava/lang/String;

    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->b:Ljava/lang/String;

    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
