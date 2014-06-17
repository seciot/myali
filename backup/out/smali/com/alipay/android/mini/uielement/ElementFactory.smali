.class public Lcom/alipay/android/mini/uielement/ElementFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/mini/uielement/ElementFactory;->a:I

    return-void
.end method

.method public static a(Lcom/alipay/android/mini/uielement/ElementType;)Lcom/alipay/android/mini/uielement/IUIElement;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/alipay/android/mini/uielement/d;->a:[I

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ElementType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/alipay/android/mini/uielement/UILabel;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UILabel;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/alipay/android/mini/uielement/UIRichText;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UIRichText;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/alipay/android/mini/uielement/UIInput;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UIInput;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/alipay/android/mini/uielement/UITextArea;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UITextArea;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/alipay/android/mini/uielement/UIPassword;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UIPassword;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/alipay/android/mini/uielement/UISimplePassword;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UISimplePassword;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/alipay/android/mini/uielement/UICheckBox;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UICheckBox;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/alipay/android/mini/uielement/UIRadio;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UIRadio;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/alipay/android/mini/uielement/UISpan;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UISpan;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/alipay/android/mini/uielement/UILink;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UILink;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/alipay/android/mini/uielement/UICombox;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UICombox;-><init>()V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lcom/alipay/android/mini/uielement/UIIcon;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UIIcon;-><init>()V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lcom/alipay/android/mini/uielement/UIButton;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UIButton;-><init>()V

    goto :goto_0

    :pswitch_d
    new-instance v0, Lcom/alipay/android/mini/uielement/UISubmit;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UISubmit;-><init>()V

    goto :goto_0

    :pswitch_e
    new-instance v0, Lcom/alipay/android/mini/uielement/UIComponent;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UIComponent;-><init>()V

    goto :goto_0

    :pswitch_f
    new-instance v0, Lcom/alipay/android/mini/uielement/UIWebView;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UIWebView;-><init>()V

    goto :goto_0

    :pswitch_10
    new-instance v0, Lcom/alipay/android/mini/uielement/UILine;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UILine;-><init>()V

    goto :goto_0

    :pswitch_11
    new-instance v0, Lcom/alipay/android/mini/uielement/UIBlock;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UIBlock;-><init>()V

    goto :goto_0

    :pswitch_12
    new-instance v0, Lcom/alipay/android/mini/uielement/UITitle;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UITitle;-><init>()V

    goto :goto_0

    :pswitch_13
    new-instance v0, Lcom/alipay/android/mini/uielement/UISelectButton;

    invoke-direct {v0}, Lcom/alipay/android/mini/uielement/UISelectButton;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/alipay/android/mini/uielement/IUIElement;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/ElementType;->a(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/ElementType;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/ElementFactory;->a(Lcom/alipay/android/mini/uielement/ElementType;)Lcom/alipay/android/mini/uielement/IUIElement;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/alipay/android/mini/uielement/ElementFactory;->a:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    sget v0, Lcom/alipay/android/mini/uielement/ElementFactory;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/android/mini/uielement/ElementFactory;->a:I

    goto :goto_0
.end method
