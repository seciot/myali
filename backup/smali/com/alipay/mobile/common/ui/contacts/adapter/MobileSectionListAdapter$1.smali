.class Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

.field final synthetic val$contactPerson:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$1;->this$0:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$1;->val$contactPerson:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$1;->this$0:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->g:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$OnShearBtnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->access$000(Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;)Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$OnShearBtnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$1;->this$0:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->g:Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$OnShearBtnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;->access$000(Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter;)Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$OnShearBtnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$1;->val$contactPerson:Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$OnShearBtnClickListener;->onClick(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;)V

    :cond_0
    return-void
.end method
