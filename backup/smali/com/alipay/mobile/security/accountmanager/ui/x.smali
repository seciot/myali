.class final Lcom/alipay/mobile/security/accountmanager/ui/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/OnSendCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/x;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSend(Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/x;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/x;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
