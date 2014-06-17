.class final Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;I)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->b:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->b:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->k(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->l(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->c(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->d(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->l(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->m(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->e(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->l(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->m(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->f(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->l(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->n(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->l(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
    .end sparse-switch
.end method
