document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('.btn-warning').forEach(function (editBtn) {
        editBtn.addEventListener('click', function () {
            const row = this.closest('tr');
            const employeeId = row.getAttribute('data-id');
            const employeeName = row.querySelector('td:nth-child(2)').textContent;
            const employeeEmail = row.querySelector('td:nth-child(3)').textContent;
            const employeePhone = this.getAttribute('data-phone');
            const employeeJob = this.getAttribute('data-job');


            document.getElementById('editEmployeeName').value = employeeName;
            document.getElementById('editEmployeeEmail').value = employeeEmail;
            document.getElementById('editEmployeePhone').value = employeePhone;
            document.getElementById('editEmployeeJob').value = employeeJob;


            document.getElementById('employeeEditDetails').setAttribute('data-id', employeeId);
        });
    });


    document.getElementById('updateEmployeeBtn').addEventListener('click', function () {

        const employeeId = document.getElementById('employeeEditDetails').getAttribute('data-id');
        const updatedName = document.getElementById('editEmployeeName').value;
        const updatedEmail = document.getElementById('editEmployeeEmail').value;
        const updatedPhone = document.getElementById('editEmployeePhone').value;
        const updatedJob = document.getElementById('editEmployeeJob').value;


        const rowToUpdate = document.querySelector(`tr[data-id="${employeeId}"]`);


        rowToUpdate.querySelector('td:nth-child(2)').textContent = updatedName;
        rowToUpdate.querySelector('td:nth-child(3)').textContent = updatedEmail;
        rowToUpdate.querySelector('.btn-info').setAttribute('data-name', updatedName);
        rowToUpdate.querySelector('.btn-info').setAttribute('data-email', updatedEmail);
        rowToUpdate.querySelector('.btn-info').setAttribute('data-phone', updatedPhone);
        rowToUpdate.querySelector('.btn-info').setAttribute('data-job', updatedJob);


        var editModal = bootstrap.Modal.getInstance(document.getElementById('employeeEditDetails'));
        editModal.hide();
    });


    document.querySelectorAll('.btn-info').forEach(function (detailsBtn) {
        detailsBtn.addEventListener('click', function () {

            const employeeId = this.getAttribute('data-id');
            const employeeName = this.getAttribute('data-name');
            const employeeEmail = this.getAttribute('data-email');
            const employeePhone = this.getAttribute('data-phone');
            const employeeJob = this.getAttribute('data-job');


            document.getElementById('employeeId').textContent = employeeId;
            document.getElementById('employeeName').textContent = employeeName;
            document.getElementById('employeeEmail').textContent = employeeEmail;
            document.getElementById('employeePhone').textContent = employeePhone;
            document.getElementById('employeeJob').textContent = employeeJob;
        });
    });
});

