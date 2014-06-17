.class Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/ui/contacts/adapter/MobileSectionListAdapter$OnShearBtnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$4;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity$4;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;

    iget-object v1, p1, Lcom/alipay/mobile/common/ui/contacts/model/ContactPerson;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity;->testShorLinkService(Ljava/lang/String;)V

    return-void
.end method
