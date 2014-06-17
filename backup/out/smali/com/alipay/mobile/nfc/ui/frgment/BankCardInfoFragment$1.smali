.class Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a()Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
    .end packed-switch
.end method
