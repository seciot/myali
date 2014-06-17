.class final Lcom/alipay/android/mini/uielement/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/UILink;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/UILink;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/uielement/aa;->a:Lcom/alipay/android/mini/uielement/UILink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aa;->a:Lcom/alipay/android/mini/uielement/UILink;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/UILink;->n()Lcom/alipay/android/mini/uielement/ElementAction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/android/mini/event/ActionType;->a(Lcom/alipay/android/mini/uielement/ElementAction;)[Lcom/alipay/android/mini/event/ActionType;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/aa;->a:Lcom/alipay/android/mini/uielement/UILink;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/aa;->a:Lcom/alipay/android/mini/uielement/UILink;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/mini/uielement/UILink;->a(Ljava/lang/Object;[Lcom/alipay/android/mini/event/ActionType;)V

    :cond_0
    return-void
.end method
