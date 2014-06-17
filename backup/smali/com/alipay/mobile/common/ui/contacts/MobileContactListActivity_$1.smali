.class Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$1;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_$1;->this$0:Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/contacts/MobileContactListActivity_;->searchCancel()V

    return-void
.end method
