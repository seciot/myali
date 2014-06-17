.class final Lcom/alipay/android/app/display/uielement/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UIButton;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UIButton;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/w;->a:Lcom/alipay/android/app/display/uielement/UIButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/display/uielement/x;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->b:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/display/uielement/x;-><init>(Lcom/alipay/android/app/display/uielement/w;Lcom/alipay/android/app/display/event/EventType;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/w;->a:Lcom/alipay/android/app/display/uielement/UIButton;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/UIButton;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    return-void
.end method
