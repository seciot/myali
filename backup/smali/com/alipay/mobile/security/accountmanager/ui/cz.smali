.class final Lcom/alipay/mobile/security/accountmanager/ui/cz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/OnSendCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/cz;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSend(Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 5

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity$a;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/cz;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
