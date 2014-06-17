.class Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$11;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$11;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$11;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    const-string/jumbo v1, "\u6536\u4fe1\u4eba\u5df2\u7ecf\u6210\u529f\u63a5\u6536"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
