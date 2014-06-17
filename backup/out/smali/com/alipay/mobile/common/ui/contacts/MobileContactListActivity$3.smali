.class Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APBladeView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->c:Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->access$100(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;->getPositionForSection(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$3;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    iget-object v1, v1, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mContactsListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setSelection(I)V

    :cond_0
    return-void
.end method
