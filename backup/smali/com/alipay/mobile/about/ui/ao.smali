.class final Lcom/alipay/mobile/about/ui/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/ao;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/ao;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v0, v0, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->v(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/ui/ao;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;

    iget-object v1, v1, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity$a;->c:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v1}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->j(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    return-void
.end method
