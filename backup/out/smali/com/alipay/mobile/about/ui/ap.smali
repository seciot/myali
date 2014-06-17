.class final Lcom/alipay/mobile/about/ui/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/ap;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/ap;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;

    iget-object v0, v0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorMenu;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setSelection(I)V

    return-void
.end method
