.class Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$10;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

.field final synthetic val$sendto:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$10;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$10;->val$sendto:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$10;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$10;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    const-string/jumbo v1, "\u77ed\u4fe1\u53d1\u9001\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$10;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$10;->val$sendto:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->testSNSService(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
