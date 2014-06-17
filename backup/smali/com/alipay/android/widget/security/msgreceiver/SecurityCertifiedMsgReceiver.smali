.class public Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;->a:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver$a;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;->a:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;->a:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver$a;

    invoke-interface {v0, p2}, Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver$a;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
