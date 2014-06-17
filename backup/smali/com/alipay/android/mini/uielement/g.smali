.class final Lcom/alipay/android/mini/uielement/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/UIButton;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UIButton;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/g;->a:Lcom/alipay/android/mini/uielement/UIButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/g;->a:Lcom/alipay/android/mini/uielement/UIButton;

    iget-object v0, v0, Lcom/alipay/android/mini/uielement/UIButton;->c:Lcom/alipay/android/mini/uielement/ElementAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/g;->a:Lcom/alipay/android/mini/uielement/UIButton;

    iget-object v0, v0, Lcom/alipay/android/mini/uielement/UIButton;->c:Lcom/alipay/android/mini/uielement/ElementAction;

    invoke-static {v0}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/g;->a:Lcom/alipay/android/mini/uielement/UIButton;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/g;->a:Lcom/alipay/android/mini/uielement/UIButton;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/mini/uielement/UIButton;->a(Ljava/lang/Object;[Lcom/alipay/android/mini/event/ActionType;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/g;->a:Lcom/alipay/android/mini/uielement/UIButton;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/UIButton;->n()Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v0

    goto :goto_0
.end method
