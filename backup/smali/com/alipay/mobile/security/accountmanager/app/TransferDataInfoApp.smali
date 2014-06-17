.class public Lcom/alipay/mobile/security/accountmanager/app/TransferDataInfoApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/a/d;

    invoke-direct {v0}, Lcom/alipay/mobile/security/accountmanager/a/d;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/app/TransferDataInfoApp;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/accountmanager/a/d;->a(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/app/TransferDataInfoApp;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/app/TransferDataInfoApp;->a()V

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/app/TransferDataInfoApp;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/app/TransferDataInfoApp;->a()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method
