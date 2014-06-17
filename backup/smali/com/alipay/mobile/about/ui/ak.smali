.class final Lcom/alipay/mobile/about/ui/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/ak;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/ak;->a:Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;

    invoke-static {v0}, Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;->f(Lcom/alipay/mobile/about/ui/MultiPictureSelectorActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    return-void
.end method
