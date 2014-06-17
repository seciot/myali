.class final Lcom/alipay/mobile/alipassapp/viewcontrol/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/viewcontrol/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/viewcontrol/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/d;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/d;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/c;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/c;->c:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_backview_top_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/d;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/c;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/c;->c:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/d;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/c;

    iget-boolean v1, v1, Lcom/alipay/mobile/alipassapp/viewcontrol/c;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Lcom/alipay/mobile/alipassapp/viewcontrol/a;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/d;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/c;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/c;->c:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/d;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/c;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/viewcontrol/c;->b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Lcom/alipay/mobile/alipassapp/viewcontrol/a;Lcom/alipay/mobile/commonui/widget/APTitleBar;)V

    return-void
.end method
