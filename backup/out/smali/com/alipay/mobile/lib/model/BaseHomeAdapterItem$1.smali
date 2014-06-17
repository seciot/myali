.class Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem$1;
.super Ljava/lang/Object;
.source "BaseHomeAdapterItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem$1;->this$0:Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem$1;->this$0:Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/lib/model/BaseHomeAdapterItem;->clickItem(Landroid/view/View;)V

    .line 70
    return-void
.end method
