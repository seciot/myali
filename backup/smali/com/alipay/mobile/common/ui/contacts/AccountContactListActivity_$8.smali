.class Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;

.field final synthetic val$data:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$8;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$8;->val$data:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$8;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$8;->val$data:Ljava/util/List;

    #calls: Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->updateHistoryList(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->access$401(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;Ljava/util/List;)V

    return-void
.end method
