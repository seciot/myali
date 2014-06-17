.class public Lcom/alipay/android/phone/publicplatform/main/api/MsgCountUpdateObservable;
.super Ljava/util/Observable;
.source "MsgCountUpdateObservable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/alipay/android/phone/publicplatform/main/api/MsgCountUpdateObservable;->setChanged()V

    .line 21
    invoke-virtual {p0}, Lcom/alipay/android/phone/publicplatform/main/api/MsgCountUpdateObservable;->notifyObservers()V

    .line 22
    return-void
.end method
