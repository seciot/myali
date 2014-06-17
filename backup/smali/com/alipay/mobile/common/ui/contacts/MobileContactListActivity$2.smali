.class Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mLoadingText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$string;->refreshing_text:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->mLoadingPanel:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->a:Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->access$000(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/dao/MobileContactDAO;->loadAllContacts(Z)V

    return-void
.end method
