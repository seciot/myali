.class final Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;I)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->b:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->b:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->n(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->t:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->o(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->t:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->p(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->t:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->q(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->t:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->f(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->f(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->t:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->r(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "rs"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->t:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
