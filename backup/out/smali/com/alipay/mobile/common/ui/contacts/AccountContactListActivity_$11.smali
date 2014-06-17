.class Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$11;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_$11;->this$0:Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;

    #calls: Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity;->loadHistoryData()V
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;->access$701(Lcom/alipay/mobile/common/ui/contacts/AccountContactListActivity_;)V

    return-void
.end method
