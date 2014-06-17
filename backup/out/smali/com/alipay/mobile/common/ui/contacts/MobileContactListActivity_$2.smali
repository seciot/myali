.class Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->mobileContactsList(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;)V

    return-void
.end method
