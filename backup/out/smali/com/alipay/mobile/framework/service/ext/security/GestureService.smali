.class public abstract Lcom/alipay/mobile/framework/service/ext/security/GestureService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract callback(Z)V
.end method

.method public abstract gesture()Ljava/lang/String;
.end method

.method public abstract gesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)V
.end method

.method public abstract restoreStateValidateGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
.end method

.method public abstract setGesture()Z
.end method

.method public abstract setGesture(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
.end method

.method public abstract setGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
.end method

.method public abstract showGestureApp(Landroid/os/Bundle;)V
.end method

.method public abstract startGestureIfNecessary(Z)Z
.end method

.method public abstract sycnStartGestureIfNecessary()Z
.end method

.method public abstract validateGesture()V
.end method

.method public abstract validateGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)V
.end method

.method public abstract validateStartClientGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
.end method
