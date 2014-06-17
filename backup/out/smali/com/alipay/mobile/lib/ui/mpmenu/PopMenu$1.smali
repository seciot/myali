.class Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$1;
.super Ljava/lang/Object;
.source "PopMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$1;->this$0:Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 71
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->position_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 72
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->position_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$1;->this$0:Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;

    #getter for: Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->e:Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$OnMenuItemClikListener;
    invoke-static {v1}, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->access$100(Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;)Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$OnMenuItemClikListener;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$1;->this$0:Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;

    #getter for: Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;
    invoke-static {v2}, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->access$000(Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;)[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    move-result-object v2

    aget-object v0, v2, v0

    iget v0, v0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;->mItemId:I

    invoke-interface {v1, v0}, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$OnMenuItemClikListener;->onMenuClicked(I)V

    .line 76
    :cond_0
    return-void
.end method
