.class Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;

.field final synthetic val$emptyText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$6;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$6;->val$emptyText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$6;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$6;->val$emptyText:Ljava/lang/String;

    #calls: Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->showEmptyContent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->access$201(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;Ljava/lang/String;)V

    return-void
.end method
