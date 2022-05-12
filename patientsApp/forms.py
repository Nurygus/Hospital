from django import forms

class ApplicationForm(forms.Form):
    theme = forms.CharField()
    message = forms.CharField(widget=forms.Textarea)

    def send_email(self):
        print('sdfsdfgsfdgsdfgsfg')
        print(self.cleaned_data)
        # send email using the self.cleaned_data dictionary
        