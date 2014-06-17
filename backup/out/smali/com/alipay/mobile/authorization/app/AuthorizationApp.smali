.class public Lcom/alipay/mobile/authorization/app/AuthorizationApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "AuthorizationApp.java"


# instance fields
.field private startParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/authorization/app/AuthorizationApp;->startParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/authorization/app/AuthorizationApp;->startParams:Landroid/os/Bundle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/authorization/app/AuthorizationApp;->startParams:Landroid/os/Bundle;

    .line 37
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public setStartParams(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/authorization/app/AuthorizationApp;->startParams:Landroid/os/Bundle;

    .line 27
    return-void
.end method
