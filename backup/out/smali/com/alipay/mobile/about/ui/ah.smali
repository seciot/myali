.class final Lcom/alipay/mobile/about/ui/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/ah;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/ah;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0, p2}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->a(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;I)I

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/ah;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0, p3}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->b(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;I)I

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
